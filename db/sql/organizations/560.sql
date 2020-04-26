
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
      'Robert Wood Johnson University Hospital Hamilton',
      '1 Hamilton Health Pl
Hamilton Township, NJ 08690',
      'Hamilton Township',
      'NJ',
      'Delivery please',
      'Unsure',
      '40.2160069',
      '-74.6716971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robert Wood Johnson University Hospital Hamilton'
        AND o.latitude = '40.2160069'
        AND o.longitude = '-74.6716971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robert Wood Johnson University Hospital Hamilton'
        AND o.latitude = '40.2160069'
        AND o.longitude = '-74.6716971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robert Wood Johnson University Hospital Hamilton'
        AND o.latitude = '40.2160069'
        AND o.longitude = '-74.6716971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robert Wood Johnson University Hospital Hamilton'
        AND o.latitude = '40.2160069'
        AND o.longitude = '-74.6716971'));

COMMIT;
