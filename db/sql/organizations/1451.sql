
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
      'OhioHealth O''Bleness Hospital',
      '55 Hospital Dr
Athens, OH 45701',
      'Athens',
      'OH',
      'Come to the main entrance and call Sydney Webber at 646-284-3103',
      'No',
      '39.3279197',
      '-82.1156224'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth O''Bleness Hospital'
        AND o.latitude = '39.3279197'
        AND o.longitude = '-82.1156224'));

COMMIT;
