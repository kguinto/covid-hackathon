
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
      'Chino Valley Smile Center ',
      '12850 10th St B1
Chino, CA 91710',
      'Chino',
      'CA',
      'Tareq Afifi',
      'Yes',
      '34.020112',
      '-117.6870003'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chino Valley Smile Center '
        AND o.latitude = '34.020112'
        AND o.longitude = '-117.6870003'));

COMMIT;
