  
class SearchTree
attr_accessor :root
  def initialize
    @root = nil
  end
  
  def build_tree(array)
      array.each do |move|
        append_tree(@root, move)
      end
  end

  def append_tree(root, value)
    node = Node.new
    node.value = value
    if @root.nil?
      @root = node
    elsif root.nil?
      return nil
    else
      root.children << node
      node.parent = root
    end
    node
  end
  
end
