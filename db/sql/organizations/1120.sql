
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
      'SSM Health St. Mary''s Care Center',
      '3401 Maple Grove Dr
Madison, WI 53719',
      'Madison',
      'WI',
      '',
      'Yes',
      '43.0112906',
      '-89.4970662'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'SSM Health St. Mary''s Care Center'
        AND o.latitude = '43.0112906'
        AND o.longitude = '-89.4970662'));

COMMIT;
