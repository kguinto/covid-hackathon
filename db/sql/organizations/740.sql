
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
      'Highlands Pediatrics',
      ' 26210 Lee Hwy
Abingdon, VA 24211',
      'Abingdon',
      'VA',
      '26210 Lee Hwy Abingdon, Va',
      'New items, but open boxes on case by case basis',
      '36.7217775',
      '-81.9069632'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highlands Pediatrics'
        AND o.latitude = '36.7217775'
        AND o.longitude = '-81.9069632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highlands Pediatrics'
        AND o.latitude = '36.7217775'
        AND o.longitude = '-81.9069632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highlands Pediatrics'
        AND o.latitude = '36.7217775'
        AND o.longitude = '-81.9069632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highlands Pediatrics'
        AND o.latitude = '36.7217775'
        AND o.longitude = '-81.9069632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highlands Pediatrics'
        AND o.latitude = '36.7217775'
        AND o.longitude = '-81.9069632'));

COMMIT;
