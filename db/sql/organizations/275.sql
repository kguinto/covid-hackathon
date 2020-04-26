
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
      'Kaiser Permanente - Antioch ',
      '4501 Sand Creek Rd
Antioch, CA 94531',
      'Antioch',
      'CA',
      'Drop off at Admin dept, 4th floor. Or at volunteer residence in Berkeley - see Kaiser Permanente Antioch under Berkeley listing',
      'Yes',
      '37.9508418',
      '-121.7749286'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Antioch '
        AND o.latitude = '37.9508418'
        AND o.longitude = '-121.7749286'));

COMMIT;
