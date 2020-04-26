
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
      'Whitmarsh House ',
      '1055 N Main St
Providence, RI 02904',
      'Providence ',
      'RI',
      'Att: Laura Hay (leave at back door) ',
      'Yes',
      '41.8493304',
      '-71.403103'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitmarsh House '
        AND o.latitude = '41.8493304'
        AND o.longitude = '-71.403103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitmarsh House '
        AND o.latitude = '41.8493304'
        AND o.longitude = '-71.403103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitmarsh House '
        AND o.latitude = '41.8493304'
        AND o.longitude = '-71.403103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitmarsh House '
        AND o.latitude = '41.8493304'
        AND o.longitude = '-71.403103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Toilet Paper',
    (SELECT id FROM organizations o
      WHERE o.name = 'Whitmarsh House '
        AND o.latitude = '41.8493304'
        AND o.longitude = '-71.403103'));

COMMIT;
