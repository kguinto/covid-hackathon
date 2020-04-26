
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
      'The One World Center for Autism',
      '7401 Forbes Blvd Suite A
Lanham, MD 20706',
      'Lanham',
      'MD',
      'mailing address',
      'No',
      '38.991358',
      '-76.8269565'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The One World Center for Autism'
        AND o.latitude = '38.991358'
        AND o.longitude = '-76.8269565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The One World Center for Autism'
        AND o.latitude = '38.991358'
        AND o.longitude = '-76.8269565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The One World Center for Autism'
        AND o.latitude = '38.991358'
        AND o.longitude = '-76.8269565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The One World Center for Autism'
        AND o.latitude = '38.991358'
        AND o.longitude = '-76.8269565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The One World Center for Autism'
        AND o.latitude = '38.991358'
        AND o.longitude = '-76.8269565'));

COMMIT;
