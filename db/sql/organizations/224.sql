
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
      'Millburn Short Hills Volunteer First Aid Squad',
      '188 Glen Ave
Millburn, NJ 07041',
      'Millburn',
      'NJ',
      'Please ring doorbell to office door on East side of building and leave supplies near door.',
      'Yes',
      '40.7261659',
      '-74.3041671'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millburn Short Hills Volunteer First Aid Squad'
        AND o.latitude = '40.7261659'
        AND o.longitude = '-74.3041671'));

COMMIT;
