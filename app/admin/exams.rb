ActiveAdmin.register Exam do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
actions :all, except: [:show]
permit_params :year, :law, :number, :question, :answer
active_admin_import validate: true, batch_transaction: true, template_object: ActiveAdminImport::Model.new(
    hint: "インポートするCSVファイルにヘッダー行は必要ありません。<br>
    文字コードは CP932(Windows-31J) を想定しています。(Excelを元にしたCSVファイルを想定)<br>
    <br>
    以下の順序で設定されているファイルを取り込みます:<br>
    '出題年', '分野', '出題番号', '問題', '解答'<br>
    <br>
    取込に失敗した場合のエラーは5件分のみ表示しています。",
    csv_headers: ['year', 'law', 'number', 'question', 'answer'],
    force_encoding: :'CP932'
  )
end
