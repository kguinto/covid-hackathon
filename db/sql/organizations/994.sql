
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
      'Rheumatology Consultants ',
      '1157 Broadway
Hewlett, NY 11557',
      'Hewlett',
      'NY',
      '',
      'Yes',
      '40.6352222',
      '-73.7038289'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rheumatology Consultants '
        AND o.latitude = '40.6352222'
        AND o.longitude = '-73.7038289'));

COMMIT;
