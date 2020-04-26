
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
      'Catered Manor Nursing Center',
      '4010 N Virginia Rd
Long Beach, CA 90807',
      'Long Beach',
      'CA',
      'drop off curbside-call - 562.426.0394 to guarantee someone will be available -ask for administrator or director of nursing OR mail to address above-OR email nsaulietis@covenantcare.com -Thank you',
      'Yes',
      '33.8311209',
      '-118.1900656'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catered Manor Nursing Center'
        AND o.latitude = '33.8311209'
        AND o.longitude = '-118.1900656'));

COMMIT;
