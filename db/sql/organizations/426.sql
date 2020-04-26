
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
      'Salem Health Medical Clinic Woodburn',
      '105 N Arney Rd Ste. 130
Woodburn, OR 97071',
      'Woodburn',
      'OR',
      'Attn: Darci Hansen',
      'Yes',
      '45.1518633',
      '-122.8851445'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salem Health Medical Clinic Woodburn'
        AND o.latitude = '45.1518633'
        AND o.longitude = '-122.8851445'));

COMMIT;
