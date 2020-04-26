
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
      'Center for Comprehensive Gynecology',
      '259 E Erie St Suite 2450
Chicago, IL 60611',
      'Chicago',
      'IL',
      'Please mail: attention to Dr. Milad',
      'Yes',
      '41.8936913',
      '-87.620953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Comprehensive Gynecology'
        AND o.latitude = '41.8936913'
        AND o.longitude = '-87.620953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Comprehensive Gynecology'
        AND o.latitude = '41.8936913'
        AND o.longitude = '-87.620953'));

COMMIT;
