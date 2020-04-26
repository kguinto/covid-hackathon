
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
      'PARC Joliet Nursing ',
      '222 N Hammes Ave
Joliet, IL 60435',
      'Joliet ',
      'IL',
      'Front desk',
      'Yes',
      '41.5273029',
      '-88.1311977'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'PARC Joliet Nursing '
        AND o.latitude = '41.5273029'
        AND o.longitude = '-88.1311977'));

COMMIT;
