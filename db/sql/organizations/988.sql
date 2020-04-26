
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
      'Chicago Center for Women''s Health',
      '7456 S State Rd Suite 303
Bedford Park, IL 60638',
      'Chicago',
      'IL',
      'Call 312-626-2244 for someone to meet at entrance',
      'Yes',
      '41.7568722',
      '-87.7440689'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Center for Women''s Health'
        AND o.latitude = '41.7568722'
        AND o.longitude = '-87.7440689'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Center for Women''s Health'
        AND o.latitude = '41.7568722'
        AND o.longitude = '-87.7440689'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Center for Women''s Health'
        AND o.latitude = '41.7568722'
        AND o.longitude = '-87.7440689'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Center for Women''s Health'
        AND o.latitude = '41.7568722'
        AND o.longitude = '-87.7440689'));

COMMIT;
