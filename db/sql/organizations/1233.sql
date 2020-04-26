
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
      'NYU Winthrop Hospital',
      '250 Fulton Ave
New Hyde Park, NY 11040',
      'New Hyde Park',
      'NY',
      'Mail only.
NYU COVID-19 Donations
Attention: Bulk Warehouse.
See https://nyulangone.org/give/funds/covid-19 for more details and signup form.',
      'Yes',
      '40.7374096',
      '-73.6559204'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Winthrop Hospital'
        AND o.latitude = '40.7374096'
        AND o.longitude = '-73.6559204'));

COMMIT;
