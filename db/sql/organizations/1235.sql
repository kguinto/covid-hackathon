
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
      'Shenandoah Community Health',
      '99 Tavern Rd
Martinsburg, WV 25401',
      'Martinsburg',
      'WV',
      '',
      'Yes',
      '39.4738902',
      '-77.966459'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shenandoah Community Health'
        AND o.latitude = '39.4738902'
        AND o.longitude = '-77.966459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shenandoah Community Health'
        AND o.latitude = '39.4738902'
        AND o.longitude = '-77.966459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shenandoah Community Health'
        AND o.latitude = '39.4738902'
        AND o.longitude = '-77.966459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shenandoah Community Health'
        AND o.latitude = '39.4738902'
        AND o.longitude = '-77.966459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shenandoah Community Health'
        AND o.latitude = '39.4738902'
        AND o.longitude = '-77.966459'));

COMMIT;
