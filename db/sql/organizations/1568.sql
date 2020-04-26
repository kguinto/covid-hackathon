
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
      'LIFE Pittsburgh',
      '130 Chartiers Ave
McKees Rocks, PA 15136',
      'McKees Rocks',
      'PA',
      'Attention: Stephanie McElroy',
      'Yes',
      '40.4652751',
      '-80.0563896'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LIFE Pittsburgh'
        AND o.latitude = '40.4652751'
        AND o.longitude = '-80.0563896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'LIFE Pittsburgh'
        AND o.latitude = '40.4652751'
        AND o.longitude = '-80.0563896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'LIFE Pittsburgh'
        AND o.latitude = '40.4652751'
        AND o.longitude = '-80.0563896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'LIFE Pittsburgh'
        AND o.latitude = '40.4652751'
        AND o.longitude = '-80.0563896'));

COMMIT;
