
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
      'Pottstown Hospital',
      '1600 E High St
Pottstown, PA 19464',
      'Pottstown',
      'PA',
      'At front desk',
      'Yes',
      '40.2426719',
      '-75.6121704'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pottstown Hospital'
        AND o.latitude = '40.2426719'
        AND o.longitude = '-75.6121704'));

COMMIT;
