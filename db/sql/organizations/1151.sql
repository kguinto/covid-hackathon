
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
      'Immokalee Family Doctor''s Clinic, LLC',
      '555 N 15th St Suite A
Immokalee, FL 34142',
      'Immokalee',
      'FL',
      'deliver inside and we are closed for lunch from 12:00pm-1:15pm',
      'Yes',
      '26.4273163',
      '-81.4342721'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic, LLC'
        AND o.latitude = '26.4273163'
        AND o.longitude = '-81.4342721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic, LLC'
        AND o.latitude = '26.4273163'
        AND o.longitude = '-81.4342721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic, LLC'
        AND o.latitude = '26.4273163'
        AND o.longitude = '-81.4342721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic, LLC'
        AND o.latitude = '26.4273163'
        AND o.longitude = '-81.4342721'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immokalee Family Doctor''s Clinic, LLC'
        AND o.latitude = '26.4273163'
        AND o.longitude = '-81.4342721'));

COMMIT;
