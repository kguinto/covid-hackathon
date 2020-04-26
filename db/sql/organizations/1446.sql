
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
      'ID Consultants Inc',
      '2300 S Congress Ave #100
Boynton Beach, FL 33426',
      'Boynton Beach. ',
      'FL',
      'Drop off or mailing',
      'No',
      '26.50739',
      '-80.089415'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ID Consultants Inc'
        AND o.latitude = '26.50739'
        AND o.longitude = '-80.089415'));

COMMIT;
