
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
      'Westchester Gardens Health & Rehab',
      '3301 McMullen Booth Rd
Clearwater, FL 33761',
      'Clearwater',
      'FL',
      'lease at front door',
      'Yes',
      '28.0413711',
      '-82.7069206'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westchester Gardens Health & Rehab'
        AND o.latitude = '28.0413711'
        AND o.longitude = '-82.7069206'));

COMMIT;
