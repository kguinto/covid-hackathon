
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
      'Kaiser Permanente - Oakland',
      '3600 Broadway
Oakland, CA 94611',
      'Oakland',
      'CA',
      'Email Oakland.HCC@kp.org with "Supplies" in the subject line.',
      'Unknown',
      '37.8234923',
      '-122.2581218'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('nasalpharyngeal swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Oakland'
        AND o.latitude = '37.8234923'
        AND o.longitude = '-122.2581218'));

COMMIT;
