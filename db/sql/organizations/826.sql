
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
      'Kaiser Permanente - Los Angeles',
      '4867 W. Sunset Blvd
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      'supply loading dock ',
      'Yes',
      '34.0983524',
      '-118.2948016'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Los Angeles'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

COMMIT;
