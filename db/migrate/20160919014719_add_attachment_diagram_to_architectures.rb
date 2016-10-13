class AddAttachmentDiagramToArchitectures < ActiveRecord::Migration
  def self.up
    change_table :architectures do |t|
      t.attachment :diagram
    end
  end

  def self.down
    remove_attachment :architectures, :diagram
  end
end
