ActiveAdmin.register Policy do
  ActiveAdmin.register Policy do
    permit_params :policy_type, :title, :description
  
    index do
      selectable_column
      id_column
      column :title
      column :description do |resource|
        truncate(resource.description, length: 200, omission: "...")
      end
      column :policy_type
      actions
    end
  
    filter :title
  
    form do |f|
      f.inputs do
        f.input :title
        f.input :policy_type
        f.input :description, as: :quill_editor, input_html: { data:
        { options:
          { modules:
            { toolbar:
              [%w[bold italic underline strike],
               %w[blockquote code-block],
               [{ 'list': 'ordered' }, { 'list': 'bullet' }],
               [{ 'align': [] }],
               ['link'],
               [{ 'size': ['small', false, 'large', 'huge'] }],
               [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
               [{ 'indent': '-1' }, { 'indent': '+1' }],
               [{ 'direction': 'rtl' }],
               [{ 'color': [] }, { 'background': [] }],
               [{ 'font': [] }],
               ['clean'],
               ['image'],
               ['video']] },
            theme: 'snow' } } }
      end
      f.actions
    end
  
  end
  
  
end
