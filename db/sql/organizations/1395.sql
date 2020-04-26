
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
      'Dixie Vital Care Infusion Clinic',
      '311 Landrum Pl
Clarksville, TN 37043',
      'Clarksville',
      'TN',
      '311 Landrum Place
Suite 600',
      'No',
      '36.519657',
      '-87.3015161'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dixie Vital Care Infusion Clinic'
        AND o.latitude = '36.519657'
        AND o.longitude = '-87.3015161'));

COMMIT;
