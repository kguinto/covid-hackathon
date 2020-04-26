
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
      'Clin-Path Diagnostics',
      '2105 S 48th St #104
Tempe, AZ 85282',
      'Tempe',
      'AZ',
      'Drop off in rear of 2105 S. 48th St #104 - Attn: Marla Dorman',
      'Open boxes ok for sanitizers but not not for masks please.',
      '33.4068636',
      '-111.9775932'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clin-Path Diagnostics'
        AND o.latitude = '33.4068636'
        AND o.longitude = '-111.9775932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clin-Path Diagnostics'
        AND o.latitude = '33.4068636'
        AND o.longitude = '-111.9775932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clin-Path Diagnostics'
        AND o.latitude = '33.4068636'
        AND o.longitude = '-111.9775932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clin-Path Diagnostics'
        AND o.latitude = '33.4068636'
        AND o.longitude = '-111.9775932'));

COMMIT;
