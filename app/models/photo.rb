class Photo < ActiveRecord::Base
	has_attached_file :photo, styles: {
		thumb: '88x66^',
		medium: '568x426^'
	},
    convert_options: {
    	thumb: " -gravity center -crop '88x66+0+0'",
    	medium: " -gravity center -crop '568x426+0+0'",
    }

    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
