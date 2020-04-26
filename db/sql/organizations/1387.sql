
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
      'Avamere Court at Keizer',
      '5210 River Rd N
Keizer, OR 97303',
      'Keizer',
      'OR',
      'Drop off items at the entrance of building 2, facing River Rd.',
      'Yes',
      '45.0009467',
      '-123.0258105'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Court at Keizer'
        AND o.latitude = '45.0009467'
        AND o.longitude = '-123.0258105'));

COMMIT;
