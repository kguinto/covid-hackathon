
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
      'Premier Urgent Care and Occ-Health Center',
      '1301 E 47th St Building #2
Chicago, IL 60653',
      'Chicago ',
      'IL',
      'Please drop inside the CSO Complex (2nd Building).  Let Receptionist at front desk know this PPE is for Premier Urgent Care or Call Chris prior to drop off at 219-805-2083. ',
      'Yes',
      '41.8090447',
      '-87.5941033'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Premier Urgent Care and Occ-Health Center'
        AND o.latitude = '41.8090447'
        AND o.longitude = '-87.5941033'));

COMMIT;
