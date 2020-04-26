
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
      'OhioHealth',
      '711 Distribution Dr
Columbus, OH 43228',
      'Columbus',
      'OH',
      'The collection center is located at a partner warehousing facility located at 711 Distribution Drive.  The hours of operation are 9:00 am to 3:00 pm.  When you arrive use the front door and someone will greet you and assist with bringing supplies inside.',
      'No',
      '39.9715722',
      '-83.1101064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth'
        AND o.latitude = '39.9715722'
        AND o.longitude = '-83.1101064'));

COMMIT;
