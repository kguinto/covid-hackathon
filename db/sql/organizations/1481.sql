
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
      'Florida Comprehensive Pain and Wellness',
      '7390 NW 5th St #4
Plantation, FL 33317',
      'Plantation',
      'FL',
      'Deliver to address listed. We can also pick up from a local site',
      'Yes',
      '26.1275192',
      '-80.246551'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Florida Comprehensive Pain and Wellness'
        AND o.latitude = '26.1275192'
        AND o.longitude = '-80.246551'));

COMMIT;
