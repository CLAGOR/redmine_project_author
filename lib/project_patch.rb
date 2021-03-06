module ProjectPatch
  def self.included(base)
    base.class_eval do
      unloadable 

      belongs_to :author, class_name: "User"
    end
  end
end
Project.send(:include, ProjectPatch)
Project.safe_attributes 'author_id'