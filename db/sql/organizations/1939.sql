
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
      'Descanso Family Practice',
      '1818 Verdugo Blvd #200
Glendale, CA 91208',
      'Glendale',
      'CA',
      'Suite 200',
      'Yes',
      '34.2035312',
      '-118.2166403'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Descanso Family Practice'
        AND o.latitude = '34.2035312'
        AND o.longitude = '-118.2166403'));

COMMIT;
