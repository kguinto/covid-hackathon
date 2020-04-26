
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
      'The Valley Hospital',
      '223 N Van Dien Ave
Ridgewood, NJ 07450',
      'Ridgewood',
      'NJ',
      'Main Entrance',
      'Yes',
      '40.9839586',
      '-74.1005935'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Valley Hospital'
        AND o.latitude = '40.9839586'
        AND o.longitude = '-74.1005935'));

COMMIT;
