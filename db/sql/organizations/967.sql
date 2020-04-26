
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
      'Plattsburgh Medical Care',
      '675 Route 3/NY-3
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      '675 route 3 inside office',
      'Yes',
      '44.694822',
      '-73.513491'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Plattsburgh Medical Care'
        AND o.latitude = '44.694822'
        AND o.longitude = '-73.513491'));

COMMIT;
