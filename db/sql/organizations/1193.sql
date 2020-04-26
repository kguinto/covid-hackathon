
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
      'Mazzoni Center',
      '1348 Bainbridge St
Philadelphia, PA 19147',
      'Philadelphia',
      'PA',
      'give to the front desk for the health center',
      'Yes',
      '39.9426271',
      '-75.1650829'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mazzoni Center'
        AND o.latitude = '39.9426271'
        AND o.longitude = '-75.1650829'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mazzoni Center'
        AND o.latitude = '39.9426271'
        AND o.longitude = '-75.1650829'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mazzoni Center'
        AND o.latitude = '39.9426271'
        AND o.longitude = '-75.1650829'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mazzoni Center'
        AND o.latitude = '39.9426271'
        AND o.longitude = '-75.1650829'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mazzoni Center'
        AND o.latitude = '39.9426271'
        AND o.longitude = '-75.1650829'));

COMMIT;
