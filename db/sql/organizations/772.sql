
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
      'PIH Health - Whittier Campus',
      '12401 Washington Blvd
Whittier, CA 90602',
      'Whittier',
      'CA',
      'Drop off at ED BLS Ambulance Bay. Upon arrival, contact ED charge RN on duty.',
      'No',
      '33.9690304',
      '-118.0490717'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health - Whittier Campus'
        AND o.latitude = '33.9690304'
        AND o.longitude = '-118.0490717'));

COMMIT;
