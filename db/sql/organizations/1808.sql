
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
      'Kaiser Permanente San Diego Medical Center',
      '9455 Clairemont Mesa Blvd
San Diego, CA 92123',
      'San Diego',
      'CA',
      'Emergency Department',
      'Yes',
      '32.8297116',
      '-117.1251884'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente San Diego Medical Center'
        AND o.latitude = '32.8297116'
        AND o.longitude = '-117.1251884'));

COMMIT;
