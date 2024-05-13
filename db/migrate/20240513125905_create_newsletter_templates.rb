class CreateNewsletterTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :newsletter_templates do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
