
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
      'Valley Health System',
      '223 N Van Dien Ave
Ridgewood, NJ 07450',
      'Ridgewood',
      'NJ',
      'Donations may be dropped off at the hospital''s main entrance at 223 North Van Dien Avenue in Ridgewood, Monday through Friday between 8 a.m. and 5 p.m.',
      '',
      '40.9839586',
      '-74.1005935'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Health System'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

COMMIT;
