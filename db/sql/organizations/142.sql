
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
      'Family Doctor Clinic of Thibodaux',
      '804 S Acadia Rd
Thibodaux, LA 70301',
      'Thibodaux',
      'LA',
      'Unused masks only. Drop off or mail',
      'Only if unused.',
      '29.7840005',
      '-90.8122163'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Doctor Clinic of Thibodaux'
        AND o.latitude = '29.7840005'
        AND o.longitude = '-90.8122163'));

COMMIT;
