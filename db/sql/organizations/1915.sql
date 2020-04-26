
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
      'Nebraska Medicine',
      '206 Harmony St
Council Bluffs, IA 51503',
      'Council Bluffs',
      'IA',
      'Drop off curbside or mailing to 206 Harmony St Council Bluffs IA 51503 (private residence)',
      'Yes',
      '41.2663294',
      '-95.8442237'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2663294'
        AND o.longitude = '-95.8442237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2663294'
        AND o.longitude = '-95.8442237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2663294'
        AND o.longitude = '-95.8442237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2663294'
        AND o.longitude = '-95.8442237'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2663294'
        AND o.longitude = '-95.8442237'));

COMMIT;
