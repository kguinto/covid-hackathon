
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
      'It''s About Time Urgent Care',
      '225 Helena Market Place
Helena, AL 35080',
      'Helena',
      'AL',
      'Unknown',
      'Unsure',
      '33.2801242',
      '-86.8511472'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'It''s About Time Urgent Care'
        AND o.latitude = '33.2801242'
        AND o.longitude = '-86.8511472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'It''s About Time Urgent Care'
        AND o.latitude = '33.2801242'
        AND o.longitude = '-86.8511472'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'It''s About Time Urgent Care'
        AND o.latitude = '33.2801242'
        AND o.longitude = '-86.8511472'));

COMMIT;
