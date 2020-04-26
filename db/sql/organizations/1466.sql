
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
      'Dr Daniel A DelCastillo DMD PA',
      '925 Arthur Godfrey Rd #302
Miami Beach, FL 33140',
      'Miami Beach',
      'FL',
      'At office door 3rd floor',
      'Yes',
      '25.8136498',
      '-80.134855'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Daniel A DelCastillo DMD PA'
        AND o.latitude = '25.8136498'
        AND o.longitude = '-80.134855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Daniel A DelCastillo DMD PA'
        AND o.latitude = '25.8136498'
        AND o.longitude = '-80.134855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Daniel A DelCastillo DMD PA'
        AND o.latitude = '25.8136498'
        AND o.longitude = '-80.134855'));

COMMIT;
