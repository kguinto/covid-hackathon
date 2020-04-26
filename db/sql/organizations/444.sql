
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
      'Parkview Hospital Randallia',
      '2200 Randallia Dr
Fort Wayne, IN 46805',
      'Fort Wayne',
      'IN',
      '',
      'Yes',
      '41.095694',
      '-85.109793'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkview Hospital Randallia'
        AND o.latitude = '41.095694'
        AND o.longitude = '-85.109793'));

COMMIT;
