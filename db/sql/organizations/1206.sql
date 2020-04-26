
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
      'Mohawk Valley Orthopedics, P.C.',
      '5010 NY-30 #205
Amsterdam, NY 12010',
      'Amsterdam',
      'NY',
      'Knock and someone will come to door. ',
      'Yes',
      '42.9581773',
      '-74.187203'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mohawk Valley Orthopedics, P.C.'
        AND o.latitude = '42.9581773'
        AND o.longitude = '-74.187203'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mohawk Valley Orthopedics, P.C.'
        AND o.latitude = '42.9581773'
        AND o.longitude = '-74.187203'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mohawk Valley Orthopedics, P.C.'
        AND o.latitude = '42.9581773'
        AND o.longitude = '-74.187203'));

COMMIT;
