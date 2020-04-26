
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
      'Ellenton Urgent Care',
      '4015 US-301
Ellenton, FL 34222',
      'Ellenton',
      'FL',
      'Drop off',
      'unsure',
      '27.5213885',
      '-82.5231234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellenton Urgent Care'
        AND o.latitude = '27.5213885'
        AND o.longitude = '-82.5231234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellenton Urgent Care'
        AND o.latitude = '27.5213885'
        AND o.longitude = '-82.5231234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellenton Urgent Care'
        AND o.latitude = '27.5213885'
        AND o.longitude = '-82.5231234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ellenton Urgent Care'
        AND o.latitude = '27.5213885'
        AND o.longitude = '-82.5231234'));

COMMIT;
