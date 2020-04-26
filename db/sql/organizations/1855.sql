
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
      'Kaiser Walnut Creek ',
      '1425 S Main St
Walnut Creek, CA 94596',
      'Walnut Creek ',
      'CA',
      'Come to the ED triage area',
      'Yes',
      '37.8924348',
      '-122.058953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Walnut Creek '
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

COMMIT;
