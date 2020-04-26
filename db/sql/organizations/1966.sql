
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
      'Paradigm Services',
      '326 N Wabash Ave
Wichita, KS 67214',
      'Wichita',
      'KS',
      '',
      'Yes',
      '37.690699',
      '-97.3251518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paradigm Services'
        AND o.latitude = '37.690699'
        AND o.longitude = '-97.3251518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paradigm Services'
        AND o.latitude = '37.690699'
        AND o.longitude = '-97.3251518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paradigm Services'
        AND o.latitude = '37.690699'
        AND o.longitude = '-97.3251518'));

COMMIT;
