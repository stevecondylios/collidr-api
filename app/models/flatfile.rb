class Flatfile < ApplicationRecord

  scope :filtered, -> (options={}) {
    query = all
    query = query.where(package_names: options[:package_names]) if options[:package_names].present?
    query = query.where(id: options[:id]) if options[:id].present?
    query
  }


  
end
