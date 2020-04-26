
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
      'AnMed Health',
      '800 N Fant St
Anderson, SC 29621',
      'Anderson',
      'SC',
      '',
      'Yes',
      '34.5115744',
      '-82.6464874'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'AnMed Health'
        AND o.latitude = '34.5115744'
        AND o.longitude = '-82.6464874'));

COMMIT;
