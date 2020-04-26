
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
      'Menorah Park Home Health',
      '27100 Cedar Rd
Beachwood, OH 44122',
      'Beachwood ',
      'OH',
      'ATTN Menorah Park Home Health',
      'Yes',
      '41.4980039',
      '-81.4855624'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Menorah Park Home Health'
        AND o.latitude = '41.4980039'
        AND o.longitude = '-81.4855624'));

COMMIT;
