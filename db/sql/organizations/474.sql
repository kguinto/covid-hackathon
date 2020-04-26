
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Martha''s Vineyard Hospital',
      '1 Hospital Road
Oak Bluffs, MA 02557',
      'Oak Bluffs',
      'MA',
      'UPS, FedEx | Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx',
      '',
      '41.4606952',
      '-70.5805954'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Long gloves (nitrile or other)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martha''s Vineyard Hospital'
        AND o.latitude = '41.4606952'
        AND o.longitude = '-70.5805954'));

COMMIT;
