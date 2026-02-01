# app/helpers/application_helper.rb
module ApplicationHelper
  def default_meta_tags
    {
      site: 'Tous bien intégrés',
      title: 'Liste pour les élections consulaires - Français de Belgique',
      reverse: true,
      separator: '|',
      description: 'Liste Tous bien intégrés - MoDem pour les élections consulaires. Représenter et défendre les intérêts des Français résidant en Belgique.',
      keywords: 'élections consulaires, Français Belgique, MoDem, expatriés, consulat',
      canonical: request.original_url,
      og: {
        title: 'Tous bien intégrés',
        description: 'Liste pour les élections consulaires - Français de Belgique',
        type: 'website',
        url: request.original_url,
        # image: image_url('og-image.png'), # À créer
        site_name: 'Tous bien intégrés'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@tousbienintegres', # Si compte Twitter
        title: 'Tous bien intégrés',
        description: 'Liste pour les élections consulaires - Français de Belgique',
        # image: image_url('og-image.png')
      }
    }
  end
end
