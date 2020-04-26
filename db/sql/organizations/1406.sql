
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
      'Saint Barnabas Medical Center',
      '94 Old Short Hills Rd
Livingston, NJ 07039',
      'Livingston ',
      'NJ',
      'Deliver to respiratory department | Attn: Julianne Spizzoucco RN
4th floor
Cooperman Pavilion 
Float Pool unit',
      'Yes',
      '40.7631494',
      '-74.3047629'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Barnabas Medical Center'
        AND o.latitude = '40.7631494'
        AND o.longitude = '-74.3047629'));

COMMIT;
