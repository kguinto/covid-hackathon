
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
      'Urgent Care for Kids',
      '7150 N President George Bush Hwy
Garland, TX 75044',
      'Garland',
      'TX',
      'Office Manager',
      'Yes',
      '32.979747',
      '-96.6612228'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care for Kids'
        AND o.latitude = '32.979747'
        AND o.longitude = '-96.6612228'));

COMMIT;
